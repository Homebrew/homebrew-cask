cask "nova" do
  version "1.1"
  sha256 "9edacf86441d704bce464637bc0d3e2c5018baa4ef2b13b4f78f2a072752166c"

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
