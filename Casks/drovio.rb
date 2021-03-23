cask "drovio" do
  version :latest
  sha256 :no_check

  url "https://repository.drovio.com/stable/drovio/macos/latest_version/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  app "Drovio.app"
end
