cask "kekaexternalhelper" do
  version "1.2.7,1.1.1"
  sha256 "8f25d23df3941cda7af5b8e6c964c7c00d9b5a24af803cd241aa26f5a8a51e72"

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaExternalHelper-v#{version.after_comma}.zip"
  name "Keka External Helper"
  desc "Helper application for the Keka file archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  # Not all releases contain the external helper, so we have to check all of them.
  livecheck do
    url "https://github.com/aonez/Keka/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/KekaExternalHelper-v?(\d+(?:\.\d+)*)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "KekaExternalHelper.app"
end
