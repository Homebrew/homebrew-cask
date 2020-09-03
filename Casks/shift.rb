cask "shift" do
  version "5.0.84"
  sha256 "17968a5efbeff1f750d053374d4bd72ae918c8529c4b4317e4e0060560467dd5"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
