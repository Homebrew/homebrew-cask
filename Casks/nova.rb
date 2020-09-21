cask "nova" do
  version "1.0"
  sha256 "c5414f5cf6888a8c53f91b53d5bdd1cd246e31aafad3c3bec381c10ef6a44a94"

  # panic-c157.kxcdn.com was verified as official when first introduced to the cask
  url "https://panic-c157.kxcdn.com/nova/Nova%20#{version}.zip"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/MacOS/Nova", target: "nova"

  zap trash: "~/Library/Application Support/Nova"
end
