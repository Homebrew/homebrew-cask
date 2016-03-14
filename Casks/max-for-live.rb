cask 'max-for-live' do
  version '721_160310'

  sha256 '6bf08e7c526b0bfe267a172155df695b73cd449a349867250c76729c9e48f6e6'
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version}.dmg"

  name 'Max for Live'
  homepage 'https://www.ableton.com/en/live/max-for-live/'
  license :commercial
end
