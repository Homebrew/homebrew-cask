cask 'basictex' do
  version '20170523'
  sha256 '024fc0e2bff8d28074a25ee8adc12c2ab37202cfea7229678d92a7b5d1debba2'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}basic",
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap delete: [
                '/usr/local/texlive/texmf-local',
                "~/Library/texlive/#{version.major}basic",
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
