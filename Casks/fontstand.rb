cask "fontstand" do
  version "2.3.0,103"
  sha256 :no_check

  url "https://fontstand.com/application/download",
      user_agent: :fake
  name "Fontstand"
  homepage "https://fontstand.com/"

  app "Fontstand.app"
end
