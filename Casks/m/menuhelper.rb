cask "menuhelper" do
  version "3.2.0"
  sha256 "be091e34c3e33aa95b7a1fc818babb1bd899cac9d0906be03ba7c843776a47a5"

  url "https://github.com/Kyle-Ye/MenuHelper/releases/download/#{version}/MenuHelper.app.zip"
  name "MenuHelper"
  desc "速达 - 欲速亦可达"
  homepage "https://github.com/Kyle-Ye/MenuHelper"

  depends_on macos: ">= :sonoma"

  app "MenuHelper.app"

  zap trash: [
    "~/Library/Containers/top.kyleye.MenuHelper",
    "~/Library/Containers/top.kyleye.MenuHelper.MenuHelperExtension",
  ]
end
