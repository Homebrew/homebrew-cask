cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.39.1,ibTLJJL6E5Z,a"
    sha256 "8dea70bb1429153bbadacc48fa12318eb231220ab09bbbc39d0964d0e33923df"
  end
  on_intel do
    version "3.39.1,c7rqf3Jyky7,a"
    sha256 "c13b17eb8bfb933b8db280a7b708fbdc3a56e7494beb46a39e8c23b60df54882"
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

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: [
    "~/.ngrok#{version.major}",
    "~/Library/Application Support/ngrok",
  ]

  caveats <<~EOS
    To install shell completions, add this to your profile:
      if command -v ngrok &>/dev/null; then
        eval "$(ngrok completion)"
      fi
  EOS
end
