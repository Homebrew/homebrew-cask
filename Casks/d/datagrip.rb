cask "datagrip" do
  arch arm: "-aarch64"

  version "2025.3.2,253.29346.170"
  sha256 arm:   "a7224548dc9da3863727b0c11cef9d613fd951d16baa016ca1407c56a9ec6964",
         intel: "0383a0a4f2fde583b62ea7d342e5718b0fa306fc8349541c75bec5ae841fb4fc"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "DataGrip.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/datagrip.wrapper.sh"
  binary shimscript, target: "datagrip"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/DataGrip.app/Contents/MacOS/datagrip' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
