class Oclint < Cask
  url 'http://archives.oclint.org/releases/0.7/oclint-0.7-x86_64-apple-darwin-10.tar.gz'
  homepage 'http://oclint.org'
  version '0.7'
  sha1 '867751f9e1b73515c22a014b22592b31c92f81bb'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint-json-compilation-database'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint-xcodebuild'

  after_install do
    puts "Symlinking 'lib/oclint' to /usr/local/lib/oclint"
    full_path = "#{self.destination_path}/oclint-0.7-x86_64-apple-darwin-10"
    system "ln -s #{full_path}/lib/oclint /usr/local/lib/oclint"
  end

  after_uninstall do
    puts "Removing symlink /usr/local/lib/oclint"
    system "rm /usr/local/lib/oclint"
  end
end
