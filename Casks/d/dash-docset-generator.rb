cask "dash-docset-generator" do
  version "2023.09.28"
  sha256 :no_check

  url "https://kapeli.com/feeds/zzz/DocsetGenerator.tgz"
  name "dash-docset-generator"
  desc "Generate Dash docsets from websites"
  homepage "https://kapeli.com/"

  livecheck do
    strategy :header_match do |headers|
      Date.parse(headers["last-modified"]).strftime("%Y.%m.%d")
    end
  end

  binary "DocsetGenerator/DocsetGenerator"
end
