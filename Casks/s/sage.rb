cask "sage" do
  arch arm: "arm64", intel: "x86_64"

  version "10.3,2.3.1"
  sha256 arm:   "21cfd28126f2a868c3ed3ffb640e21e428faef10813c5dd2aa44107123fa2f6a",
         intel: "f4c50877fc22dee4842e08b095fdd3f4adc72d55040b0edd2ca101579ebbea3f"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/SageMath[._-]v?(\d+(?:\.\d+)+)[._-].*?#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall quit:    [
              "com.tcltk.tcllibrary",
              "com.tcltk.tklibrary",
              "org.computop.sage",
              "org.computop.SageMath",
            ],
            pkgutil: [
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.bin",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.share",
              "org.computop.SageMath.#{version.csv.first.dots_to_underscores}.texlive",
            ]

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/SageMath",
    "~/Library/Preferences/SageMath.plist",
  ]
end
