cask "sage" do
  arch arm: "arm64", intel: "x86_64"

  version "9.8,1.6.1"
  sha256 arm:   "faae6f5c251c03e66ad70c58e61ae2f3d5f3894a133bd0b2b04f05ad230b8c91",
         intel: "81c94f84ac2398e5b31dce13a4b47d12240724c406fb65f49c5f25d782b6b60f"

  url "https://github.com/3-manifolds/Sage_macOS/releases/download/v#{version.csv.second}/SageMath-#{version.csv.first}_#{arch}.dmg",
      verified: "github.com/3-manifolds/Sage_macOS/"
  name "Sage"
  desc "Mathematics software system"
  homepage "https://www.sagemath.org/"

  livecheck do
    url "https://github.com/3-manifolds/Sage_macOS/releases/latest"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/SageMath[._-]v?(\d+(?:\.\d+)+)[._-].*?#{arch}\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SageMath-#{version.csv.first.dots_to_hyphens}.app"
  pkg "Recommended_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall quit:    [
              "org.computop.sage",
              "org.computop.SageMath",
              "com.tcltk.tcllibrary",
              "com.tcltk.tklibrary",
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
