cask "shift" do
  version "5.0.87"
  sha256 "3e00182e5e3b894b265e12cc6f4efa3b9150996522fce1cf27f35662fbbe2162"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
