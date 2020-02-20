cask 'basictex' do
  version '2019.1011'
  sha256 'b40998a06132364b4e58ca1be77c4b86d3e9514a4a59d8712a912b78593620cd'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  conflicts_with cask: [
                         'mactex-no-gui',
                         'mactex',
                       ]
  depends_on macos: '>= :sierra'

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}basic",
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                       '/Library/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}basic",
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
