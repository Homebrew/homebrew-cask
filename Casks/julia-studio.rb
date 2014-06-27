class JuliaStudio < Cask
  version '0.4.4'
  sha256 'ce165f2ff8b1fd76ad3d1f4cb822dbf23c4d87390e6b4089b0ea17ab18bfd3ed'

  url 'https://s3.amazonaws.com/cdn-common.forio.com/julia-studio/0.4.4/julia-studio-macx-installer-0.4.4.dmg'
  homepage 'http://forio.com/products/julia-studio/'

  link 'JuliaStudio.app'
  caveats do
    os_version_only '10.7', '10.8', '10.9'
  end
end
