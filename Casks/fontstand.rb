cask "fontstand" do
  version "2.3.1,104"
  sha256 :no_check

  url "https://fontstand.com/application/download",
      user_agent: :fake
  name "Fontstand"
  homepage "https://fontstand.com/"

  app "Fontstand.app"
end
