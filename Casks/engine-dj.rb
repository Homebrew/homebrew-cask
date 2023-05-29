cask "engine-dj" do
  version "3.0.1,6c40df4446"
  sha256 "f4f7e212d2b3bf47087ef2caa9ee710559584ccdca680dd860ed387a3aea6a31"

  url "https://imb-cicd-public.s3.amazonaws.com/Engine/#{version.csv.first}/Release/EDJ/mac/5e1011cdeb/Engine_DJ_Release_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "imb-cicd-public.s3.amazonaws.com/Engine/"
  name "Engine DJ Desktop"
  desc "World's premier DJ software suite"
  homepage "https://enginedj.com/"

  livecheck do
    url "https://enginedj.com/downloads"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/Engine/[.\d]*?/Release/EDJ/mac/[\da-f]*?/Engine_DJ_Release_(\d+\.\d+\.\d+)_([\da-f]*?)\.dmg}i,
      )
      next if match.blank?

      "#{match[1]}#{"," + match[2] if match[2]}"
    end
  end

  pkg "Engine DJ_#{version.csv.first}_Setup.pkg"

  uninstall pkgutil: "com.airmusictechnology.enginedj.application"

  zap trash: "~/Music/Engine Library"
end
