class Juliastudio < Cask
  if MacOS.version < '10.7'
    url 'https://s3.amazonaws.com/cdn-common.forio.com/julia-studio/0.4.4/julia-studio-mac10.6-installer-0.4.4.dmg'
    version '0.4.4'
    sha256 '380006f00db5b19ab1a68b25b72dba669d7ff8f109c68d6ecf1fcc34dbfe485f'
  else
    url 'https://s3.amazonaws.com/cdn-common.forio.com/julia-studio/0.4.4/julia-studio-macx-installer-0.4.4.dmg'
    version '0.4.4'
    sha256 'ce165f2ff8b1fd76ad3d1f4cb822dbf23c4d87390e6b4089b0ea17ab18bfd3ed'
  end
  homepage 'http://forio.com/labs/julia-studio/'
  app 'JuliaStudio.app'
end
