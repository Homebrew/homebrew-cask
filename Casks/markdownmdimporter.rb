cask 'markdownmdimporter' do
  version :latest
  sha256 :no_check

  url 'https://brettterpstra.com/downloads/Markdown.mdimporter.zip'
  name 'Markdown Spotlight Plugin'
  homepage 'https://brettterpstra.com/2011/10/18/fixing-spotlight-indexing-of-markdown-content/'

  artifact 'Markdown.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/Markdown.mdimporter"

  postflight do
    system_command '/usr/bin/mdimport', args: ['-r', "#{ENV['HOME']}/Library/Spotlight/Markdown.mdimporter"]
  end
end
