cask "fontstand" do
  version "2.4.0,105"
  sha256 :no_check

  url "https://fontstand.com/apps/download/69",
      user_agent: :fake
  name "Fontstand"
  desc "Font discovery and rental platform"
  homepage "https://fontstand.com/"

  app "Fontstand.app"
end
