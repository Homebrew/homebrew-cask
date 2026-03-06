cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.37.1,43g4rYQwAMz,a"
    sha256 "e8aac64346e27b95dbcc1a523c2629787a9040aabc1a3703088dcfba437baeb1"
  end
  on_intel do
    version "3.37.1,72CozUEqsLs,a"
    sha256 "a281e3b143d756a5bb4db776381c4080edb4c3d8843fa49a43b4ebeeb6e35061"
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
