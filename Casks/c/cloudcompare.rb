cask "cloudcompare" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.3"
  sha256 arm:   "1a2fd67461844d06b34f7c4670e3be61bc97d6fc94024a169b5886735cca58fd",
         intel: "e3cabeff81458d6c20b1dcf105656722089424ca24a3604cb6cb522995d01895"

  url "https://www.danielgm.net/cc/release/CloudCompare-#{version}-#{arch}.dmg"
  name "CloudCompare"
  homepage "https://www.danielgm.net/cc/"

  livecheck do
    url "https://www.danielgm.net/cc/release/index.html"
    regex(/CloudCompare[._-](\d+(?:\.\d+)+)[._-][^.]+\.dmg/i)
    strategy :page_match do |page, regex|
      page = page.split(/stable\s+release/i, 2).second
      page[regex, 1]
    end
  end

  depends_on macos: ">= :sierra"

  app "CloudCompare.app"
end
