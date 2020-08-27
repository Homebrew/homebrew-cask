cask "shift" do
  version "5.0.81"
  sha256 "e32ea3ebcf28bd1e8d4361999ffbcfd840d31ccc576a13663ff3623d3192ef11"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
