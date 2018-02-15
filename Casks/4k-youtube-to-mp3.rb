cask '4k-youtube-to-mp3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '3.3.3.1777'
  sha256 'fa07045b9ea32cc7608a80462db35fbe96ed045691a16a112231ce4bec624486'

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '89c3a317a578aa5ef3291f295bb4ff1ffc73f87c026475924dbc3e9f50fe695b'
  name '4K YouTube to MP3'
  homepage 'https://www.4kdownload.com/products/product-youtubetomp3'

  app '4K YouTube to MP3.app'
end
