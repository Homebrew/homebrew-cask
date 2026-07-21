cask "automl-ide" do
  version "1.0.14"
  sha256 "7f635c5f7c810cbfa6c4e0e6b87b3338985883a5bd8703def7e0a3d445da1358"

  # Points to your PUBLIC releases repository
  url "https://github.com/VEdaNT2250/AutoML-Installer-files/releases/download/Just_Me/AutoML.IDE_0.1.0_aarch64.dmg"
  name "AutoML IDE"
  desc "Local GPU-Accelerated Tabular Machine Learning Workspace"
  homepage "https://github.com/Vedant2250/AutoML"

  app "AutoML IDE.app"
end
