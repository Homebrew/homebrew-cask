cask "cpuinfo" do
  version "1.7.0"
  sha256 "9ba2008a1b7101bfae32ea33f03c5c9dc7759d5a48881a8cba446b7da7328293"

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
