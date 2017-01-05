cask 'prime95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '28.9'
  sha256 'c8e58f032dbbf0402d97ea81272153faeae61d6ef4461c1f88c99ecbf3fdcc32'

  url "http://www.mersenne.org/ftp_root/gimps/p95v#{version.no_dots}.MacOSX.zip"
  name 'Prime95'
  homepage 'http://www.mersenne.org/'

  app 'Prime95.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mersenne.prime95.sfl'
end
