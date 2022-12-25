cask "iconchanger" do
  version "1.2.7"
  sha256 "65952531d571375a60b8b1082f2d655040bf566d4e8692449476a8e2582e8b46"

  url "https://github.com/underthestars-zhy/IconChanger/releases/download/v#{version}/IconChanger.2022-12-22.11-45-17.zip"
  name "IconChanger"
  desc "App that can change you app's icon by simplifying the icon changing process"
  homepage "https://github.com/underthestars-zhy/IconChanger"

  livecheck do
    url "https://github.com/underthestars-zhy/IconChanger.git"
  end

  app "IconChanger 2022-12-22 11-45-17/IconChanger.app"
end
