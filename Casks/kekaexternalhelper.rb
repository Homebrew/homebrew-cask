cask "kekaexternalhelper" do
  version "1.2.7,1.1.1"
  sha256 "8f25d23df3941cda7af5b8e6c964c7c00d9b5a24af803cd241aa26f5a8a51e72"

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaExternalHelper-v#{version.after_comma}.zip"
  name "Keka External Helper"
  name "KekaDefaultApp"
  desc "Helper application for the Keka file archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  livecheck do
    url "https://www.keka.io/en/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/KekaExternalHelper-v?(\d+(?:\.\d+)*)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "KekaExternalHelper.app"
end
