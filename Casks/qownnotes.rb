cask 'qownnotes' do
  version '16.12.9,b2621-183923'
  sha256 'c320af940de2a7de71752752e5536afa6cdd55b29ea28202758a25de64209aa3'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '8e06a38f0671d98de38d97911986195de0b8dd36089ec1cea3953aa6bde5c44f'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
