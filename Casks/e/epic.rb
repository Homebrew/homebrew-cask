cask "epic" do
  arch arm: "arm", intel: "intel"

  version "120.0.6099.71"
  sha256 arm:   "f4c018f7c7bed4400eaa23ca14128c51d6a477250d5b453b8a00d01af83fe473",
         intel: "0be47399f764d59ed14614b689bee5f8b8c31e2a425cd0baf02e322656698702"

  url "https://cdn.epicbrowser.com/v#{version.major}#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Epic.app"
end
