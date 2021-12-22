cask "kekaexternalhelper" do
  version "1.1.2,1.2.50"
  sha256 "4fb629045b9d887a6adb3280e791ff8ac7843b40b475bb88ece5c25c6cd5d70f"

  url "https://github.com/aonez/Keka/releases/download/v#{version.csv.second}/KekaExternalHelper-v#{version.csv.first}.zip"
  name "Keka External Helper"
  name "KekaDefaultApp"
  desc "Helper application for the Keka file archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  livecheck do
    url "https://www.keka.io/en/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/KekaExternalHelper-v?(\d+(?:\.\d+)*)\.zip}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "KekaExternalHelper.app"
end
