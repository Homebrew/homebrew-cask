cask "nova" do
  version "3"
  sha256 "18fa851798f3d5d88a57503009a38217c6af1e99151805577e908bfa3f1930b4"

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
