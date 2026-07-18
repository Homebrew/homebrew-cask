cask "dorso" do
  version "1.13.0"
  sha256 "55cf0691e95e445dbfd0ab1b4dfa0c85aba01da60dbcd077f1ba4856345444f1"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: :ventura

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
