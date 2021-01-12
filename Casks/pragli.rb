cask "pragli" do
  version :latest
  sha256 :no_check

  url "https://storage.googleapis.com/always-on-cdf01.appspot.com/dist/Pragli.dmg",
      verified: "storage.googleapis.com/always-on-cdf01.appspot.com"
  name "Pragli"
  desc "Virtual office for remote teams"
  homepage "https://pragli.com/"

  app "Pragli.app"
end
