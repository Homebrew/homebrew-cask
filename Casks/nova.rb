cask "nova" do
  version "2"
  sha256 "a02c3e3178e51587593694303fadf2857b044cd58168d412cef1e75e6942df07"

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
