cask "nova" do
  version "1.2"
  sha256 "1a657420ebd9db499845a679e99ab1f531147bb2d14e726d78db0798553fe378"

  # panic-c157.kxcdn.com/ was verified as official when first introduced to the cask
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
