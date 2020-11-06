cask "nova" do
  version "2.1"
  sha256 "10c1f4fbca051a81e8a37087b7a0023faedb98fd8209c05a7eb9f03ff6c258aa"

  # download-cdn.panic.com/ was verified as official when first introduced to the cask
  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/MacOS/Nova", target: "nova"

  zap trash: "~/Library/Application Support/Nova"
end
