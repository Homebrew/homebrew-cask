cask "boxer" do
  version "1.4.0"
  sha256 "a75f9149612f90fa78f1016a6edef34ed600334f7170d624b083a310ae4c904e"

  url "https://github.com/alunbestor/Boxer/releases/download/v#{version}/boxer-#{version}.zip",
      verified: "github.com/alunbestor/Boxer/"
  appcast "https://github.com/alunbestor/Boxer/releases.atom"
  name "Boxer"
  desc "DOS game emulator"
  homepage "http://boxerapp.com/"

  auto_updates true
  depends_on macos: "<= :mojave"

  app "Boxer.app"
end
