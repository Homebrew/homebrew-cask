cask :v1 => 'eparakstitajs' do
  version :latest
  sha256 :no_check

  url 'https://www.eparaksts.lv/files/ep3/eparakstitajs3-distribution.pkg'
  name 'eParakstītājs 3.0'
  homepage 'https://www.eparaksts.lv'
  license :closed

  pkg 'eparakstitajs3-distribution.pkg'
end
