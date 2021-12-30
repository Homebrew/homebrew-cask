cask "notedup" do
  version "2014031401"
  sha256 "827eb67e58fa6e529bb54c934d7cd21f46c6ba1e8efaedeeb996cae9f333c973"

  url "https://github.com/ppyyf/notedup-bin/blob/master/#{version}/NoteDup_Mac_#{version}.zip?raw=true",
      verified: "github.com/ppyyf/notedup-bin/"
  name "NoteDup"
  homepage "https://appcenter.yinxiang.com/app/notedup/mac/"

  app "NoteDup.app"
end
