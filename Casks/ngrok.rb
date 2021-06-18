cask "ngrok" do
  version :latest
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip",
        verified: "bin.equinox.io/"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-arm64.zip",
        verified: "bin.equinox.io/"
  end
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: "~/.ngrok2"
end
