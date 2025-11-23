cask "font-vujahday-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vujahdayscript/VujahdayScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vujahday Script"
  homepage "https://fonts.google.com/specimen/Vujahday+Script"

  font "VujahdayScript-Regular.ttf"

  # No zap stanza required
end
