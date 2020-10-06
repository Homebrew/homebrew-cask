cask "microsoft-r-open" do
  version "4.0.2"
  sha256 "EB4F0DDB009A5CF63A85024599238802E0F4E509BE3A065A3EAED9D185DE66B7"

  # mran.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://mran.blob.core.windows.net/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
  appcast "https://github.com/Microsoft/microsoft-r-open/releases.atom"
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
end
