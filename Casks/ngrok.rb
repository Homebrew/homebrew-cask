cask "ngrok" do
  version :latest
  sha256 :no_check

  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip",
      verified: "bin.equinox.io/"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  binary "ngrok"

  postflight do
    FileUtils.chmod 0755, Dir.glob("#{staged_path}/ngrok")
  end

  zap trash: "~/.ngrok2"
end
