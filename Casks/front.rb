cask "front" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.35.21"

  if Hardware::CPU.intel?
    sha256 "1a9bd64ad0149daa731c922561624740ea8bf6b9df51ca409c63262550e30647"
  else
    sha256 "bd53faf197401e967ae9b45e11abbcbaca10b0ceae20c54681030da68e4db5d0"
  end

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
