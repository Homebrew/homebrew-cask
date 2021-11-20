cask "revolver-office" do
  version "8.12.3"
  sha256 "fae87bb58908319bf0bb7da62fc30bed67195ac30e691e7de55a6a17e0dbc8d0"

  url "https://download.revolver.info/r#{version.major}/#{version.minor}/#{version.patch}/mac/revolveroffice#{version.no_dots}.dmg"
  name "Revolver Office"
  desc "Project management tool"
  homepage "https://www.revolver.info/"

  livecheck do
    url "https://www.revolver.info/downloads/"
    strategy :page_match do |page|
      page.scan(/href=.*?r?(\d+(?:\/\d+)+)\/mac\/revolveroffice?.*?\.dmg/i)
          .map { |match| match&.first&.gsub(/\//, "\.") }
    end
  end

  app "Revolver Office.app"
end
