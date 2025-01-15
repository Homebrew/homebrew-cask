cask "engine-prime" do
  version "1.6.1,5f4b42a70b"
  sha256 "978c1fdde817f855242502a833b9a7447501fdc2ba9af0d941509561059f90b3"

  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/#{version.csv.first.no_dots}/Engine_Prime_#{version.csv.first}_#{version.csv.second}_Setup.dmg",
      verified: "inmusicbrands.com/"
  name "Engine Prime"
  desc "Music Management Software for Denon's Engine OS Hardware"
  homepage "https://web.archive.org/web/20170602015353/http://denondj.com/engineprime"

  # https://community.enginedj.com/t/engine-prime-vs-engine-dj/40181
  deprecate! date: "2024-01-15", because: :unmaintained
  disable! date: "2025-01-15", because: :unmaintained

  pkg "Engine Prime_#{version.csv.first}_Setup.pkg"

  uninstall pkgutil: "com.airmusictechnology.engineprime.application"

  zap trash: "~/Music/Engine Library"

  caveats do
    <<~EOS
      engine-dj is the official successor to this software:

        brew install --cask engine-dj
    EOS
  end
end
