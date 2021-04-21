cask "microsoft-r-open" do
  version "3.5.1"
  sha256 "95739c07d4fb90f9a3aef19269dd4939f368457d928328adf5126b30c4229601"

  url "https://mran.blob.core.windows.net/install/mro/#{version}/microsoft-r-open-#{version}.pkg",
      verified: "mran.blob.core.windows.net/"
  name "Microsoft R Open"
  name "MRO"
  homepage "https://mran.microsoft.com/"

  pkg "microsoft-r-open-#{version}.pkg"

  uninstall pkgutil: [
    "com.microsoft.pkg.mro-framework",
    "com.microsoft.pkg.mro-gui",
  ],
            delete:  [
              "/usr/bin/R",
              "/usr/bin/Rscript",
              "/Library/Frameworks/R.Framework/Versions/Current",
              "/Library/Frameworks/R.Framework/Versions/#{version.major_minor}",
            ]

  zap trash: [
    "~/.R",
    "~/.RData",
    "~/.Rapp.history",
    "~/.Rhistory",
    "~/.Rprofile",
    "~/Library/R",
    "~/Library/Caches/org.R-project.R",
  ]

  caveats do
    discontinued
  end
end
