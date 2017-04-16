cask :v1 => 'batch-rip-actions' do
	version : '1.1.1'
	sha256 :no_check

	url "http://dl.dropbox.com/u/242398/BatchRip/BatchRipActions-#{version}.dmg"
	homepage 'http://forums.macrumors.com/showthread.php?t=805573'
	license :unknown

	app 'Batch Rip Actions for Automator.app'
end
