cask "mauidrawingapp" do
  arch arm: "apple-silicon", intel: "intel"
  version "1.0.1"
  sha256 arm:   "dd5bd949ef3cc567afa23f5d9b75eb7bdb0435589460885c7ff7f9ab3c01dcc3",
         intel: "4cf3772d69d5441da1c10887f36a0a5fe49c6cb5c2eb9df0fdea1f369fdd7b94"

  url "https://s3.us-east-1.amazonaws.com/files2.syncfusion.com/ContinueAI/TestContinue/Homebrew/#{arch}/MauiDrawingApp.dmg"
  name "MauiDrawingApp"
  desc "This is the Maui Drawing App for MAC OS to sketch your Ideas"


  app "MauiDrawingApp.app"

end
