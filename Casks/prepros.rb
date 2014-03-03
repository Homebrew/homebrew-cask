class Prepros < Cask
  url 'http://download.alphapixels.com/Prepros-4.0.1.zip'
  homepage 'http://alphapixels.com/prepros/'
  version '4.0.1'
  sha256 '84510d1252274898b0fc4f95828b60e29a2c946a158bbf7d3188611c62dcd3b1'
  link 'Prepros.app'
  after_install do
    # re: https://github.com/phinze/homebrew-cask/issues/2859,
    # /usr/bin/unzip loses executable bits in this archive for
    # unknown reasons
    system <<-EOBASH
       /usr/bin/find '#{destination_path}' -type f -print0 |  \
       /usr/bin/xargs -0 /usr/bin/file |                      \
       /usr/bin/egrep ' Mach-O (executable|dynamically)' |    \
       /usr/bin/cut -f1 -d: |                                 \
       /usr/bin/perl -pe 's{\\n}{\\000}' |                    \
       /usr/bin/xargs -0 /bin/chmod a+x
    EOBASH
  end
end
