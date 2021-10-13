cask "ngrok" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "2.3.40"
  sha256 :no_check

  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-#{arch}.zip",
      verified: "bin.equinox.io/"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://dl.equinox.io/ngrok/ngrok/stable"
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: "~/.ngrok#{version.major}"
end
