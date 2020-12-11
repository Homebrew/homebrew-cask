cask "nova" do
  version "3.1"
  sha256 "f399a2af01360057b0f314ac3945b233a24a8d4b24e5972ce093190cc8cc4918"

  # download-cdn.panic.com/ was verified as official when first introduced to the cask
  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "https://download-cdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/SharedSupport/nova", target: "nova"

  zap trash: "~/Library/Application Support/Nova"
end
