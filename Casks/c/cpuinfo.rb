cask "cpuinfo" do
  version "1.6.0"
  sha256 "d3cd0ebfd3ce57d475101d9401aeb659c053d93486d131078a8057e61274d20d"

  url "https://github.com/yusukeshib/cpuinfo/releases/download/v#{version}/cpuinfo.zip"
  name "cpuinfo"
  desc "CPU meter menu bar app"
  homepage "https://github.com/yusukeshib/cpuinfo"

  depends_on :macos

  app "cpuinfo.app"

  zap trash: [
    "~/Library/Application Scripts/io.fata.shibata.cpuinfo",
    "~/Library/Containers/io.fata.shibata.cpuinfo",
  ]
end
