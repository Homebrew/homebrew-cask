cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  if MacOS.version <= :mojave
    version "far2l-2.3.211204-48654cc,2021-12-04_alpha"
    url "https://github.com/elfmz/far2l/releases/download/v#{version.csv.second}/far2l-#{version.csv.first}-alpha-MacOS-10.11.dmg"
    sha256 "113c55b19e8427258bea955415ff9282d18a4669df5f459ca8340bb5ce1726f2"

    livecheck do
      url "https://github.com/elfmz/far2l/releases"
      regex(%r{/v([^/]+)/far2l-(.+)-alpha-MacOS-10\.11\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  else
    version "2.3.211204-48654cc4,2021-12-04_alpha"
    url "https://github.com/elfmz/far2l/releases/download/v#{version.csv.second}/far2l-#{version.csv.first}-alpha-MacOS-10.15.dmg"
    sha256 "b2e43058b9d77306670afe61d579cf2031827328706dab54e34d3f7597b7fa01"

    livecheck do
      url "https://github.com/elfmz/far2l/releases"
      regex(%r{/v([^/]+)/far2l-(.+)-alpha-MacOS-10\.15\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
