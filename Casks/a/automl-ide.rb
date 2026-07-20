cask "automl-ide" do
  version "1.0.14"
  sha256 "7f635c5f7c810cbfa6c4e0e6b87b3338985883a5bd8703def7e0a3d445da1358"

  url "https://github.com/Vedant2250/AutoML/releases/download/v#{version}/AutoML_#{version}_x64.dmg"
  name "AutoML IDE"
  desc "Local GPU-Accelerated Tabular Machine Learning Workspace"
  homepage "https://github.com/Vedant2250/AutoML"

  app "AutoML IDE.app"
end
