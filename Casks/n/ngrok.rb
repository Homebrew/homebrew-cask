cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.39.2,c2kYG4NCXNy,a"
    sha256 "847ee9cb2947a9adeb2f7618ba37c1d2ebe46725dded5a235e20e13281c15e63"
  end
  on_intel do
    version "3.39.2,6mp4z58YGV3,a"
    sha256 "0a07ac6cd27678018e6bcd2ae0528c151514aa9d9f8cd1480e1e93808f732d18"
  end

  url "https://bin.ngrok.com/#{version.csv.third}/#{version.csv.second}/ngrok-v#{version.major}-#{version.csv.first}-darwin-#{arch}.zip"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://ngrok.com/download/archive/ngrok/ngrok-v#{version.major}/stable/ngrok_archive"
    regex(%r{href=.*?/([^/]+)/([^/]+)/ngrok[._-]v#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  binary "ngrok"

  generate_completions_from_executable "ngrok", "completion"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: [
    "~/.ngrok#{version.major}",
    "~/Library/Application Support/ngrok",
  ]
end
