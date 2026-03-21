cask "font-odor-mean-chey" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/odormeanchey/OdorMeanChey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Odor Mean Chey"
  homepage "https://fonts.google.com/specimen/Odor+Mean+Chey"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Odor Mean Chey",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OdorMeanChey-Regular.ttf"

  # No zap stanza required
end
