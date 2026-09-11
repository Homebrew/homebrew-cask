cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.39.11,dy27whJwwmb,a"
    sha256 "9324a6552d74e25d5bdfdbedc4b32422c96f044fda37877498ad8ef10bddf7f7"
  end
  on_intel do
    version "3.39.11,8QQF2ciKqxM,a"
    sha256 "c6b9b3d9184fc08c33fb8b181d9f241d8f5d61162a0be0521b6dfc1f11813a96"
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

  postflight_steps do
    set_permissions "ngrok", "0755"
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
