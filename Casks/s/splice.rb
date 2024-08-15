cask "splice" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 :no_check

  url "https://desktop.splice.com/darwin/stable/#{arch}/Splice.app.zip"
  name "Splice"
  desc "Cloud-based music creation and collaboration platform"
  homepage "https://splice.com/"

  livecheck do
    url "https://api.splice.com/v2/desktop/darwin/stable/latest?v=0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
